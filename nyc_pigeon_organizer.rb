require "pry"
def nyc_pigeon_organizer(data)
    final_results = {}
    data.each do |characteristic, info|
        info.each do |traits, names|
            names.each do |name|
                if final_results[name] == nil
                    final_results[name] = {}
                    final_results[name][characteristic] = [traits.to_s]
                    elsif final_results[name][characteristic] != nil
                    final_results[name][characteristic] << traits.to_s
                    else
                    final_results[name][characteristic] = [traits.to_s]
                end
            end
        end
    end
    final_results
end
